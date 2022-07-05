cask "sigdigger" do
  version "0.3.0"
  sha256 "18314d22fdc0d41061312b02d088f6cb903292c741d1e4f6aa3371c804406c98"

  url "https://github.com/BatchDrake/SigDigger/releases/download/v#{version}/SigDigger-#{version}-x86_64.dmg",
      verified: "github.com/BatchDrake/SigDigger/"
  name "SigDigger"
  desc "Qt-based digital signal analyzer"
  homepage "https://batchdrake.github.io/SigDigger/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SigDigger.app"
end
