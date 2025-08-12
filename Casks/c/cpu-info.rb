cask "cpu-info" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "51d7025ac09b1e5be4b768571e10e827e478f3f942957174ee1aade208836a81",
         intel: "caab261200eb7148f52e2c0a7f5a0acd275e2e07f6abb97bea46edb5e6ea55e9"

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
