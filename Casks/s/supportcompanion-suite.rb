cask "supportcompanion-suite" do
  version "2.3.0.81036"
  sha256 "baa0dc1d75c71f3d552e63e779174885073fc3355f32a43c52784792b240a286"

  url "https://github.com/macadmins/SupportCompanion/releases/download/v#{version}/SupportCompanion_Suite-#{version}.pkg"
  name "Support Companion Suite"
  desc "Helper application designed to empower end-users"
  homepage "https://github.com/macadmins/SupportCompanion"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  pkg "SupportCompanion_Suite-#{version}.pkg"

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
