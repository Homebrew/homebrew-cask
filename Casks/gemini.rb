cask "gemini" do
  version "2.7.0,356:1604685686"
  sha256 "e34ad01f530d11ce4a59b5dbe6cdff69b60e80683801ff04f37c95ff77ded88d"

  # dl.devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini#{version.major}/#{version.after_comma.before_colon}/#{version.after_colon}/Gemini#{version.major}-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.devmate.com/com.macpaw.site.Gemini#{version.major}.xml"
  name "Gemini"
  desc "Disk space cleaner that finds and deletes duplicated and similar files"
  homepage "https://macpaw.com/gemini"

  app "Gemini #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Gemini*",
    "~/Library/Caches/com.macpaw.site.Gemini*",
    "~/Library/Cookies/com.macpaw.site.Gemini*.binarycookies",
    "~/Library/Logs/com.macpaw.site.Gemini*",
    "~/Library/Preferences/com.macpaw.site.Gemini*",
    "~/Library/Saved Application State/com.macpaw.site.Gemini*",
    "/Users/Shared/Gemini #{version.major}",
  ]
end
