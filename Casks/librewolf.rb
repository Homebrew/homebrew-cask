cask "librewolf" do
  arch arm: "aarch64", intel: "x86_64"

  on_intel do
    version "104.0.2,1,9f8faa99b69c350c56e8cb3b427c2d1b"
    sha256 "a238994aff2b4206189228a0027cf96155a8798b1c71e4c316cf162b749b413d"
  end
  on_arm do
    version "104.0.2,1,b109ac2ed561aeefd32fe5ab6128f174"
    sha256 "f58df3b992c06468c8300ce345d4dda38e8c23e07189ee4c6e4b05c277d63df9"
  end

  url "https://gitlab.com/librewolf-community/browser/macos/uploads/#{version.csv.third}/librewolf-#{version.csv.first}-#{version.csv.second}.en-US.mac.#{arch}.dmg",
      verified: "gitlab.com/librewolf-community/browser/macos/"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  livecheck do
    url "https://gitlab.com/api/v4/projects/13853965/releases"
    regex(%r{/(\w+)/librewolf[._-](\d+(?:\.\d+)+)-(\d+)\.en-US\.mac\.#{arch}\.dmg[\s"]}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[2]},#{match[0]}"
      end
    end
  end

  app "LibreWolf.app"

  zap trash: [
    "~/.librewolf",
    "~/Library/Application Support/LibreWolf",
    "~/Library/Caches/LibreWolf",
    "~/Library/Caches/LibreWolf Community",
    "~/Library/Preferences/io.gitlab.librewolf-community.librewolf.plist",
    "~/Library/Saved Application State/io.gitlab.librewolf-community.librewolf.savedState",
  ]
end
