cask "beolingus-deutsch-englisch" do
  version "2023.12.28"
  sha256 "8075ef0f1316d3b2da36d3dc563b129eda4ae50c68117fe90b49a3aaa5e27fc9"

  url "https://github.com/Tekl/beolingus-deutsch-englisch/releases/download/v#{version}/BeoLingus_Deutsch-Englisch_dictionaryfile.zip",
      verified: "github.com/Tekl/beolingus-deutsch-englisch/"
  name "BeoLingus Deutsch-Englisch Dictionary plugin"
  desc "Extends Apples Dictionary App with a German-English dictionary"
  homepage "https://tekl.de/lexikon-plug-ins/beolingus-deutsch-englisch-lexikon-plugin"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :el_capitan"

  dictionary "BeoLingus Deutsch-Englisch.dictionary"

  # No zap stanza required
end
