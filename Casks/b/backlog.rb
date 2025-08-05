cask "backlog" do
  version "1.8.0"
  sha256 "de3747cee4d6b63ccc102c25ef9ca3ab8f21d78d2fbbc8cf34725035484e1fbd"

  url "https://github.com/czytelny/backlog/releases/download/v#{version}/Backlog-darwin-x64.zip"
  name "Backlog"
  homepage "https://github.com/czytelny/backlog"

  deprecate! date: "2024-10-30", because: :unmaintained

  app "Backlog-darwin-x64/Backlog.app"

  zap trash: "~/Library/Application Support/Backlog"

  caveats do
    requires_rosetta
  end
end
