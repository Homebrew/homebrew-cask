cask "openthesaurus-deutsch" do
  version "2026.01.06"
  sha256 "8f7ea37aad662fece8ed857bc622af5e3d2d158c607262691742f457b60f4a05"

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
