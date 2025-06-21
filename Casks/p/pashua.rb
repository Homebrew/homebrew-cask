cask "pashua" do
  version "0.11"
  sha256 :no_check

  url "https://www.bluem.net/files/Pashua.dmg"
  name "Pashua"
  desc "Native dialogs for scripting languages"
  homepage "https://www.bluem.net/en/mac/pashua/"

  no_autobump! because: :requires_manual_review

  deprecate! date: "2024-07-05", because: :unmaintained

  app "Pashua.app"

  caveats do
    requires_rosetta
  end
end
