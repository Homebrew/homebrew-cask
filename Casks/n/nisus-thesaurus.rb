cask "nisus-thesaurus" do
  version "1.2.2"
  sha256 "cef58bf8e2c2e165a3a8e5e7771fe8dd46a0ffb68baecc6220058faa756ab675"

  url "https://nisus.com/files/public/NisusThesaurus-v#{version.no_dots}.zip"
  name "Nisus Thesaurus"
  desc "Electronic thesaurus that for the 'Service' menu"
  homepage "https://nisus.com/Thesaurus/"

  livecheck do
    url "https://nisus.com/Thesaurus/updates.php"
    regex(/Version\s*(\d+(?:\.\d+)*)/i)
  end

  app "Nisus Thesaurus.app"
end
