cask "cpu-info" do
  arch arm: "arm64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "6b3263812daa92c21df3820c73556735391d60764f4408eee64cd861cfd6bb7f",
         intel: "6ad3561e4df3f4dbf97b3193433b59fd779c72b37bfc6b95962f29ec0eda559d"

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
