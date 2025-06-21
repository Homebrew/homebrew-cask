cask "linqpad" do
  version "8.106.5.5602133"
  sha256 "6eec41f272f1d6c6e2309d57b93ccc2f2eab14f856fd405db8f7c7789dcb34ea"

  url "https://linqpad.azureedge.net/preview/LINQPad#{version.major}-Beta.dmg?cache=#{version}",
      verified: "linqpad.azureedge.net/"
  name "LINQPad"
  desc ".NET LINQ database query tool and code scratchpad"
  homepage "https://www.linqpad.net/"

  livecheck do
    url "https://www.linqpad.net/Download.aspx"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :page_match do |page, regex|
      beta_file_url = page[/href=["']([^"' >]*?LINQPad[._-]?v?\d+[._-]Beta\.dmg)/i, 1]
      next unless beta_file_url

      merged_headers = Homebrew::Livecheck::Strategy.page_headers(
        URI.join("https://www.linqpad.net/", beta_file_url).to_s,
      ).reduce(&:merge)

      match = merged_headers["location"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "LINQPad #{version.major} beta.app"

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
