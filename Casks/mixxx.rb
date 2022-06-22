cask "mixxx" do
  version "2.3.3"
  sha256 "cf971b89eed87e46670c4e4135954a4757217502c2958efd54b5a0636c6f5962"

  url "https://downloads.mixxx.org/releases/#{version}/mixxx-#{version}-macosintel.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://www.mixxx.org/download/"
    regex(%r{href=.*?/mixxx[-_.]v?(\d+(?:\.\d+)+)[-_.]macosintel\.dmg}i)
  end

  app "Mixxx.app"
end
