cask "mixxx" do
  version "2.3.1"
  sha256 "27e2420e9527bf8748dce92bee1592e53d224ce04fa5095c7e9ce2ef22abdf1d"

  url "https://downloads.mixxx.org/releases/#{version}/mixxx-#{version}-macosintel.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://www.mixxx.org/download/"
    strategy :page_match
    regex(%r{href=.*?/mixxx[-_.](\d+(?:\.\d+)*)[-_.]macosintel\.dmg}i)
  end

  app "Mixxx.app"
end
