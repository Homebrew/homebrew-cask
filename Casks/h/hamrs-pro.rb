cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.36.1"
  sha256 arm:   "4ab159dcf81bb5c6452b4fa6d7f8b2299deec5d5cf48862d0ff9a8cc481e9f37",
         intel: "96fc40fa18bae2cb780e42cc349a9c96fc6aa783f089f98d7de99420f61df50e"

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
  depends_on macos: ">= :catalina"

  app "HAMRS Pro.app"

  zap trash: [
    "~/Library/Application Support/hamrs-pro",
    "~/Library/Logs/hamrs-pro",
  ]
end
