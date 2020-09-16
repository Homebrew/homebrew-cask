cask "classroom-assistant" do
  version "2.0.2"
  sha256 "31c9718ebbfc33c1c79f420194a984cd05c07c435d3c2529af4eec434979ea58"

  url "https://github.com/education/classroom-assistant/releases/download/v#{version}/Classroom.Assistant-darwin-x64-#{version}.zip"
  appcast "https://github.com/education/classroom-assistant/releases.atom"
  name "GitHub Classroom Assistant"
  desc "Tool to clone student repositories in bulk"
  homepage "https://classroom.github.com/assistant"

  app "Classroom Assistant.app"
end
