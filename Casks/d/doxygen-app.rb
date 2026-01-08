cask "doxygen-app" do
  arch arm: "arm", intel: "intel"

  version "1.16.0"
  sha256 arm:   "25c612024d32105ad95307a7a3763715f2df2d58cb1ca64db286e7e23ba34752",
         intel: "a98870e3bfe6856772eb85756ffb2017c723b7adc0b20d4e3ab51fef5c13eeff"

  url "https://www.doxygen.nl/files/Doxygen-#{version}-#{arch}.dmg"
  name "Doxygen"
  desc "Generate documentation from source code"
  homepage "https://www.doxygen.nl/"

  livecheck do
    url "https://www.doxygen.nl/download.html"
    regex(/href=.*?Doxygen[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :sequoia"

  app "Doxygen.app"

  zap trash: [
    "~/Library/Preferences/org.doxygen.Doxywizard.plist",
    "~/Library/Preferences/org.doxygen.plist",
    "~/Library/Saved Application State/org.doxygen.savedState",
  ]
end
