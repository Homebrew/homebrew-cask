cask "chronos" do
  version "4.2.0"
  sha256 "6324d6fc61b2bbadd8d72d23cec49eb833e5d29b6d1998a9d7b2b82e70f04f09"

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast "https://github.com/web-pal/chronos-timetracker/releases.atom"
  name "Chronos Timetracker"
  homepage "https://github.com/web-pal/chronos-timetracker"

  app "Chronos.app"
end
