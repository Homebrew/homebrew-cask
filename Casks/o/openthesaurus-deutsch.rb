cask "openthesaurus-deutsch" do
  version "2026.03.07"
  sha256 "d620dc74b4e2bdf5322a7a537a3c126e209436b3621c849c725289cb6066aa90"

  url "https://github.com/Tekl/openthesaurus-deutsch/releases/download/v#{version}/OpenThesaurus_Deutsch_dictionaryfile.zip",
      verified: "github.com/Tekl/openthesaurus-deutsch/"
  name "OpenThesaurus Deutsch Dictionary plugin"
  desc "German thesaurus for Apple Dictionary"
  homepage "https://tekl.de/lexikon-plug-ins/openthesaurus-deutsch-lexikon-plugin"

  livecheck do
    url :url
    strategy :github_latest
  end

  dictionary "OpenThesaurus Deutsch.dictionary"

  # No zap stanza required
end
