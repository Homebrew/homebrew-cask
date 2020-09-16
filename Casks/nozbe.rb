cask "nozbe" do
  version "3.13.0"
  sha256 "384a15bd9b34935b7f0f152ebdd5c8653e0aed86e01c4e7844acfe34769cc4c9"

  url "https://files.nozbe.com/#{version.no_dots}/release/Nozbe.app.zip"
  name "Nozbe"
  desc "Task manager"
  homepage "https://nozbe.com/"

  depends_on macos: ">= :sierra"

  app "Nozbe.app"
end
