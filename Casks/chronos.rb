cask "chronos" do
  version "5.0.1"
  sha256 "3130fcd1b0f62d88aa9f3f3b11f82ed359418377a0240b321c4975254285fbd4"

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast "https://github.com/web-pal/chronos-timetracker/releases.atom"
  name "Chronos Timetracker"
  homepage "https://github.com/web-pal/chronos-timetracker"

  app "Chronos.app"
end
