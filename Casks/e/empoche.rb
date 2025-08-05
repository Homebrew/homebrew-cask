cask "empoche" do
  version "0.4.5"
  sha256 "8a4c57928da42a3ed60b1e0648b24614f84ecc582f3b9c9ee04cd5323e58ea4f"

  url "https://empoche-desktop.s3.amazonaws.com/Empoche-#{version}-mac.zip",
      verified: "empoche-desktop.s3.amazonaws.com/"
  name "Empoche"
  desc "Automatic time-tracking with task and project management"
  homepage "https://empoche.com/"

  livecheck do
    url "https://empoche-desktop.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Empoche.app"

  zap trash: [
    "~/Library/Application Support/empoche",
    "~/Library/Preferences/com.empoche.app.plist",
    "~/Library/Saved Application State/com.empoche.app.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
