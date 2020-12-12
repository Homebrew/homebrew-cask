cask "clock-bar" do
  version "1.0,1801968"
  sha256 "88d1ee551f2edbe25e12098dbdbb2edc5f29e21cd52095e5ea275667a4cbffd1"

  url "https://github.com/nihalsharma/Clock-Bar/files/#{version.after_comma}/Clock.Bar.app.zip"
  appcast "https://github.com/nihalsharma/Clock-Bar/releases.atom"
  name "Clock Bar"
  desc "Macbook | Clock, right on the touch bar"
  homepage "https://github.com/nihalsharma/Clock-Bar/"

  app "Clock Bar.app"
end
