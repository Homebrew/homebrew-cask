cask "librewolf" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  if Hardware::CPU.intel?
    version "100.0.1,1,09e6256595bec55f433cb7c0c10a009a"
    sha256 "b4d6056c348bc46ddda4a65d838c671edb8bfd51292d46b8964b9fc2482a5e18"
  else
    version "100.0.1,1,6de0ab0ddbf9208178075a25b26bf204"
    sha256 "f858c1a012a423ec6660712a7f6d98459d63442a794fbc0b228c4e9c0dce9818"
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
