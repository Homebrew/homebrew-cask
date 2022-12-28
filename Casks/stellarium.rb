cask "stellarium" do
  version "1.2"
  sha256 "4700f8da7b523b9fdc03222272f26dfbb3d9a94e1bab560868d70e90c601a309"

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
