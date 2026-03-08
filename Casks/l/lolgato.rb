cask "lolgato" do
  version "1.7.1"
  sha256 "954cc947850440a42e197c5daf3a63a78b4506c96766bc9425de9375063be3c7"

  url "https://github.com/raine/Lolgato/releases/download/v#{version}/Lolgato.dmg"
  name "Lolgato"
  desc "Enhances control over Elgato lights"
  homepage "https://github.com/raine/Lolgato/"

  depends_on macos: ">= :sonoma"

  app "Lolgato.app"

  zap trash: [
    "~/Library/Caches/fi.zendit.Lolgato",
    "~/Library/HTTPStorages/fi.zendit.Lolgato",
    "~/Library/Preferences/fi.zendit.Lolgato.plist",
  ]
end
