cask "shuttle" do
  version "1.2.9"
  sha256 "0b80bf62922291da391098f979683e69cc7b65c4bdb986a431e3f1d9175fba20"

  url "https://github.com/fitztrev/shuttle/releases/download/v#{version}/Shuttle.zip",
      verified: "github.com/fitztrev/shuttle/"
  name "Shuttle"
  desc "Simple shortcut menu"
  homepage "https://fitztrev.github.io/shuttle/"

  deprecate! date: "2024-08-25", because: :unmaintained

  app "Shuttle.app"

  zap trash: "~/.shuttle.json"

  caveats do
    requires_rosetta
  end
end
