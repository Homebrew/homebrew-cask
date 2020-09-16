cask "mimecast" do
  version "2.11"
  sha256 "4213e910eecddcf8784696d45c718b0ef9fa071ef98a82f45cbdbf4abda59cc1"

  url "https://us-api.mimecast.com/update/bin/msm/eNptjMtuwjAURP_F6xb5mdjsoBWL8lBVhKqyiRzfa7CKkxYnoaTqv9fsWY00c-b8koSuP2MAMiVvzUn4xerA5gv_8RKfr5fd97haDj-7i9ovj-YwcjsPfP36rrd-vTzqbR2LYTOmzQJmcF2RB-JOAZuu_wLb4cSHE04aGzG71yGis6mbQDzc5SKojIG3SjrNlRGqMKIUvHRgwDHuCi50cbv2qWsjnl0LN_HTbjtjM2nuSlMYbwyjrDSS6swMeE6hbciU3eO79hPzRuqqT5RVSlUDKPUoKk45pSpXkjOBhlFEB-C8LrUsTAFSuZLpmqI33tKS5dRWc5_7GmovbQ1WGecY-fsHKkl1eg"
  appcast "http://updates-us.mimecast.com/update/descriptors/msm/latest"
  name "Mimecast for Mac"
  homepage "https://community.mimecast.com/community/knowledge-base/mimecast-for-mac"

  depends_on macos: ">= :sierra"

  app "Mimecast.app"

  zap trash: [
    "~/Library/Preferences/com.mimecast.Mimecast-Mail.plist",
    "~/Library/com.mimecast.Mimecast-Mail",
    "~/Library/Logs/Mimecast",
  ]
end
