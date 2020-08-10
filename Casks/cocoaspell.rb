cask "cocoaspell" do
  version "2.5"
  sha256 "d8dd01e6471df86f55d5f272a33fdb421f49a2fb923a9858a8772ec4367d333c"

  url "https://people.ict.usc.edu/leuski/public_html/cocoaspell/cocoAspell.#{version}.dmg",
      user_agent: :fake
  appcast "https://people.ict.usc.edu/leuski/public_html/cocoaspell/home.php"
  name "cocoAspell"
  homepage "https://people.ict.usc.edu/leuski/public_html/cocoaspell/home.php"

  depends_on macos: ">= :el_capitan"

  pkg "cocoAspell.pkg"

  uninstall pkgutil: "net.leuski.cocoaspell.*",
            delete:  [
              "/Application Support/cocoAspell/aspell6-en-6.0-0",
              "/Library/Application Support/cocoAspell",
              "/Library/PreferencePanes/Spelling.prefPane",
            ]

  zap trash: [
    "~/.aspell.conf",
    "~/.aspell.en.prepl",
    "~/.aspell.en.pws",
    "~/Library/Preferences/cocoAspell",
  ]

  caveats <<~EOS
    Non-English dictionaries must be installed separately. For more information, see

      https://people.ict.usc.edu/~leuski/cocoaspell/install_dict.php
  EOS
end
