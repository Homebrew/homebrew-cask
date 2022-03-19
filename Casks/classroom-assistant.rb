cask "classroom-assistant" do
  version "2.0.4"
  sha256 "976da27e92ff1c2c711bda57a4d3cb5be7733f14a02d8b7f730526d3b8e9ea65"

  url "https://github.com/education/classroom-assistant/releases/download/v#{version}/Classroom.Assistant-darwin-x64-#{version}.zip"
  name "GitHub Classroom Assistant"
  desc "Tool to clone student repositories in bulk"
  homepage "https://classroom.github.com/assistant"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Classroom Assistant.app"
end
