cask "charlessoft-timetracker" do
  version "0.6.4"
  sha256 :no_check

  url "https://charlessoft.com/TimeTracker.zip"
  name "TimeTracker"
  homepage "https://charlessoft.com/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "TimeTracker.app"
end
