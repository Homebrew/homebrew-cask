cask "cpu-info" do
  arch arm: "arm64", intel: "x64"

  version "1.4.3"
  sha256 arm:   "b9e7206841195af0644074a00c1f5098037770f94baaf7c08d0220d1fc9c186b",
         intel: "61863a0586edc7ff3299d68eb811f4703b789f9055ba118c5161caea1ac57a63"

  url "https://github.com/kamgurgul/cpu-info/releases/download/jvm-#{version}/CPU-Info-macos-#{arch}-#{version}.dmg"
  name "CPU Info"
  desc "Provides information about device hardware and software"
  homepage "https://github.com/kamgurgul/cpu-info"

  livecheck do
    url :url
    regex(/^jvm[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :monterey"

  app "CPU-Info.app"

  zap trash: "~/Library/Preferences/CPU-Info"
end
