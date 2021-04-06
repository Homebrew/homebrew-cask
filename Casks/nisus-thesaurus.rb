cask "nisus-thesaurus" do
  version "1.2"
  sha256 "c2f55568bbb129bb6f779dcea154d6b0c608ebe7f35c839d3371bcc936325775"

  url "https://nisus.com/files/public/NisusThesaurus-v#{version.no_dots}.zip"
  appcast "https://nisus.com/Thesaurus/updates.php"
  name "Nisus Thesaurus"
  desc "Electronic thesaurus that for the 'Service' menu"
  homepage "https://nisus.com/Thesaurus/"

  app "Nisus Thesaurus.app"
end
