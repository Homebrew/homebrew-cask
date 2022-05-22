cask "psychopy" do
  version "2022.1.4"
  sha256 "0946ab2e10a9e8804aae19323bde7391a2b4a69e208428ca94829d1bb71aff24"

  url "https://github.com/psychopy/psychopy/releases/download/#{version.major_minor_patch}/StandalonePsychoPy-#{version}-macOS.dmg"
  name "PsychoPy"
  desc "Create experiments in behavioral science"
  homepage "https://github.com/psychopy/psychopy"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.+/StandalonePsychoPy[._-]v?(\d+(?:\.\d+)+)[._-]macOS\.dmg}i)
  end

  app "PsychoPy.app"
end
