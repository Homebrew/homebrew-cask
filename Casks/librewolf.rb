cask "librewolf" do
  if Hardware::CPU.intel?
    version "90.0.2-1,cf9d3890330b86823b100271bd82beda"
    sha256 "d0cc9a78c1e584250bbe069d61f80da8af0d730abd920aef0071704cf5a7930b"

    url "https://gitlab.com/librewolf-community/browser/macos/uploads/#{version.after_comma}/librewolf-#{version.before_comma}.dmg",
        verified: "gitlab.com/librewolf-community/browser/macos/"

    livecheck do
      url "https://gitlab.com/api/v4/projects/13853965/releases"
      regex(%r{"url"\s*:\s*"[^"]*?/(\h+)/librewolf[._-]v?(\d+(?:\.\d+)+(?:-\d+)?)(?:[._-]x86)?\.dmg"}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map do |match|
          "#{match[1]},#{match[0]}"
        end
      end
    end
  else
    version "90.0.2-1,ad1de7d5d4d7bfc3bc6fbd65e6e75a87"
    sha256 "589ee6cb055585b005de04fcd39c7d9aedf025f371fa8fd2a83b1b53401e1011"

    url "https://gitlab.com/librewolf-community/browser/macos/uploads/#{version.after_comma}/librewolf-#{version.before_comma}_aarch64_exp.dmg",
        verified: "gitlab.com/librewolf-community/browser/macos/"

    livecheck do
      url "https://gitlab.com/api/v4/projects/13853965/releases"
      regex(%r{"url"\s*:\s*"[^"]*?/(\h+)/librewolf[._-]v?(\d+(?:\.\d+)+(?:-\d+)?)[._-]aarch64(?:[._-]exp)?\.dmg"}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map do |match|
          "#{match[1]},#{match[0]}"
        end
      end
    end
  end

  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf-community.gitlab.io/"

  app "LibreWolf.app"

  zap trash: [
    "~/Library/Application Support/LibreWolf",
    "~/Library/Caches/LibreWolf",
    "~/Library/Caches/LibreWolf Community",
    "~/Library/Preferences/io.gitlab.librewolf-community.librewolf.plist",
    "~/Library/Saved Application State/io.gitlab.librewolf-community.librewolf.savedState",
    "~/.librewolf",
  ]
end
