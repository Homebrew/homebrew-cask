cask "stellarium" do
  version "1.1.1"
  sha256 "961a5c9a0eefd06457ebc0ebf24c45dee9d9e1a51ab8fa4c6931584225381578"

  url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor}/Stellarium-#{version}-macOS.zip",
      verified: "github.com/Stellarium/stellarium/"
  name "Stellarium"
  desc "Tool to render realistic skies in real time on the screen"
  homepage "https://stellarium.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Stellarium[._-]v?(\d+(?:\.\d+)*)[._-]macOS\.zip}i)
  end

  depends_on macos: ">= :big_sur"

  app "Stellarium.app"

  zap trash: "~/Library/Preferences/Stellarium"
end
