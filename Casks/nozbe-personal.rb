cask "nozbe-personal" do
  version "3.21,3210.7"
  sha256 "6806d711b99ed88090f682c149a45304dcd6629863d1667d0f154f08871dd1b9"

  url "https://files2.nozbe.com/#{version.csv.second.major}/release/NozbePersonal.app.zip"
  name "Nozbe"
  desc "Task manager"
  homepage "https://nozbe.com/"

  livecheck do
    url "https://nozbe.com/mac"
    strategy :extract_plist
  end

  depends_on macos: ">= :mojave"

  app "Nozbe Personal.app"
end
