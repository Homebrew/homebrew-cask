cask "librewolf" do
  arch = Hardware::CPU.intel? ? "" : "_aarch64_exp"

  if Hardware::CPU.intel?
    version "95.0-1,4aa1720552e47aecaf6b327ecd0e8b14"
    sha256 "8620b7b434b171ab2b1de256eb1a446764e0fc7d4a12a50d16a5fed7b81f4dc0"
  else
    version "95.0-1,28eb3a54b3a320cdb09773e848e681d2,a8e661b69e34058ee3e9f970730d5c9b"
    sha256 "c07c913b46bdc953940487f3494aefa0d0856729e5439d0a703207a64fc69b8e"
  end

  url "https://gitlab.com/librewolf-community/browser/macos/uploads/#{version.after_comma}/librewolf-#{version.before_comma}#{arch}.dmg",
      verified: "gitlab.com/librewolf-community/browser/macos/"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  livecheck do
    url "https://gitlab.com/api/v4/projects/13853965/releases"
    regex(%r{/(\w+\d+)/librewolf[._-](\d+(?:\.\d+)+(?:-\d+)?)#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

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
