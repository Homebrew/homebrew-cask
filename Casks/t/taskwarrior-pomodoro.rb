cask "taskwarrior-pomodoro" do
  version "1.8.0"
  sha256 "07aad9949cf7ec5752d5da87333c52f07654b0c480b18779afaec0f5debb488a"

  url "https://github.com/coddingtonbear/taskwarrior-pomodoro/releases/download/v#{version}/taskwarrior-pomodoro-#{version}.dmg"
  name "Taskwarrior-Pomodoro"
  homepage "https://github.com/coddingtonbear/taskwarrior-pomodoro"

  app "Taskwarrior Pomodoro.app"

  caveats do
    requires_rosetta
  end
end
