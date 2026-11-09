cask "linqpad" do
  version "9.11.10.4566546"
  sha256 "3595ed2106c7b7aca65ba59435a20bf5f21db26fa9e41d53fbf96c1e24fd5f8a"

  url "https://cdn.linqpad.net/public/LINQPad#{version.major}.dmg?cache=#{version}"
  name "LINQPad"
  desc ".NET LINQ database query tool and code scratchpad"
  homepage "https://www.linqpad.net/"

  livecheck do
    url "https://www.linqpad.net/Download.aspx"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :page_match do |page, regex|
      file_url = page[/href=["']([^"' >]*?LINQPad[._-]?v?\d+(?:[._-]Beta)?\.dmg)/i, 1]
      next unless file_url

      merged_headers = Homebrew::Livecheck::Strategy.page_headers(
        URI.join("https://www.linqpad.net/", file_url).to_s,
      ).reduce(&:merge)

      match = merged_headers["location"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "LINQPad #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/.LINQPad",
    "~/Library/Application Support/LINQPad",
    "~/Library/Caches/LINQPad#{version.major}.Beta.macos",
    "~/Library/WebKit/LINQPad#{version.major}.Beta.macos",
    "~/LINQPad/Settings",
  ]

  caveats do
    license "https://www.linqpad.net/eula.txt"
  end
end
