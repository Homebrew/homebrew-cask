cask "shortcuts" do
  version "1.0.1"
  sha256 "5494da4a8fb18471dd98aa5087820087463dc20e16ca6eb7c7ccde5e910f432c"

  url "https://github.com/siong1987/shortcuts/releases/download/#{version}/restart.sleep.shutdown.logout.lock.zip"
  name "Restart/Sleep/Logout/Shutdown/Lock Shortcuts"
  homepage "https://github.com/siong1987/shortcuts/"

  disable! date: "2024-09-08", because: :unmaintained

  suite "system", target: "Shortcuts"

  caveats do
    requires_rosetta
  end
end
