cask "classroom-assistant" do
  version "2.0.3"
  sha256 "ffb76331ef43696a8ee6acb4e9afb1e8f2819ca3d3c61fbc8cf9bfd0d018deee"

  url "https://github.com/education/classroom-assistant/releases/download/v#{version}/Classroom.Assistant-darwin-x64-#{version}.zip"
  name "GitHub Classroom Assistant"
  desc "Tool to clone student repositories in bulk"
  homepage "https://classroom.github.com/assistant"

  app "Classroom Assistant.app"
end
