cask "beolingus-deutsch-englisch" do
  version "2023.12.28"
  sha256 :no_check

  url "https://downloads.tekl.de/BeoLingus_Deutsch-Englisch_dictionaryfile.zip"
  name "BeoLingus Deutsch-Englisch Dictionary plugin"
  desc "Extends Apples Dictionary App with a German-English dictionary"
  homepage "https://tekl.de/lexikon-plug-ins/beolingus-deutsch-englisch-lexikon-plugin"

  livecheck do
    url :homepage
    regex(%r{<em>\s*v(\d\d\d\d.\d\d.\d\d)\s*</em>}i)
  end

  depends_on macos: ">= :el_capitan"

  dictionary "BeoLingus Deutsch-Englisch.dictionary"

  # No zap stanza required
end
