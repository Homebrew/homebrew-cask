cask "cpu-info" do
  arch arm: "arm64", intel: "x64"

  version "1.10.0"
  sha256 arm:   "080acf4cfd55d4d677bd962e2ab399b303a1a898066d7b2634870900729faa31",
         intel: "7b7e943ef7855f838ab018a656a4ddc19dd39707ad4026316ee994e8a336be93"

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
