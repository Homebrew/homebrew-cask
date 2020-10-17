cask "s3stat-setup" do
  version "2.3.2"
  sha256 "1e7af631e09f427571723866c05f691396bcef1e7557826c80e7c99982a86242"

  url "https://download.s3stat.com/s3stat-#{version}.dmg"
  name "S3stat Secure Setup"
  desc "Secure setup utility for S3stat"
  homepage "https://www.s3stat.com/"

  app "s3stat-setup.app"

  uninstall quit: "com.electron.s3stat-setup"

  zap trash: [
    "~/Library/Application Support/s3stat",
    "~/Library/Saved Application State/com.electron.s3stat-setup.savedState",
  ]
end
