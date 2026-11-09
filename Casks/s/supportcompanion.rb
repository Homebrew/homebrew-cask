cask "supportcompanion" do
  version "3.0.0.81153"
  sha256 "7a8e02eab999c597a591cf401f14fd0147dc520a39d9c1895db52666f96cf795"

  url "https://github.com/macadmins/SupportCompanion/releases/download/v#{version}/SupportCompanion-#{version}.pkg"
  name "Support Companion"
  desc "Provides utility and support tools"
  homepage "https://github.com/macadmins/SupportCompanion"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  pkg "SupportCompanion-#{version}.pkg"

  uninstall script: {
    executable: "/Applications/SupportCompanion.app/Contents/Resources/Uninstall.zsh",
    sudo:       true,
  }

  zap trash: [
    "/Library/Application Support/SupportCompanion",
    "~/Library/Application Support/SupportCompanion",
    "~/Library/Preferences/com.github.macadmins.SupportCompanion.plist",
  ]
end
