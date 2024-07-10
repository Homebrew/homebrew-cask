cask "flixtools" do
  version "3.3.1,667"
  sha256 :no_check

  url "https://www.flixtools.com/download/FlixTools.dmg"
  name "OpenSubtitles FlixTools Lite"
  desc "Downloads subtitles for movies"
  homepage "https://www.flixtools.com/"

  # The version text on the download page (https://www.flixtools.com/download/)
  # isn't present in the HTML and is rendered with JavaScript using data from
  # the `versionchk.json` file.
  livecheck do
    url "https://www.flixtools.com/v/versionchk.json"
    strategy :json do |json|
      version = json["finalVersion"]
      build = json["final"]
      next if version.blank? || build.blank?

      "#{version},#{build}"
    end
  end

  app "FlixTools.app"
end
