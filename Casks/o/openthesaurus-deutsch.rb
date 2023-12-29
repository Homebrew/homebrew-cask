cask "openthesaurus-deutsch" do
  version "2023.12.28"
  sha256 :no_check

  url "https://downloads.tekl.de/OpenThesaurus_Deutsch_dictionaryfile.zip"
  name "OpenThesaurus Deutsch Dictionary plugin"
  desc "Extends Apples Dictionary App with a German thesaurus"
  homepage "https://tekl.de/lexikon-plug-ins/openthesaurus-deutsch-lexikon-plugin"

  livecheck do
    url :homepage
    regex(%r{<em>\s*v(\d\d\d\d.\d\d.\d\d)\s*</em>}i)
  end

  depends_on macos: ">= :el_capitan"

  dictionary "OpenThesaurus Deutsch.dictionary"

  # No zap stanza required
end
