cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.51.0"
  sha256 arm:   "823ce561962bb71d1ae235de05d8d0683c3240ffa331033beb70c42e82d1eeb8",
         intel: "07b2d1f70940f2c989081c144ef340999282d7e60c4f50a26659c89c52479b94"

  url "https://hamrs-dist.s3.amazonaws.com/hamrs-pro-#{version}-mac-#{arch}.dmg",
      verified: "hamrs-dist.s3.amazonaws.com/"
  name "HAMRS Pro"
  desc "Portable logger"
  homepage "https://hamrs.app/"

  livecheck do
    url "https://hamrs-dist.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :big_sur

  app "HAMRS Pro.app"

  zap trash: [
    "~/Library/Application Support/hamrs-pro",
    "~/Library/Logs/hamrs-pro",
  ]
end
