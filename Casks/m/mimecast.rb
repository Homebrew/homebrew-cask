cask "mimecast" do
  version "2.11"
  sha256 :no_check

  url "https://us-api.mimecast.com/update/bin/msm/eNptjMtuwjAURP_F6xb5mdjsoBWL8lBVhKqyiRzfa7CKkxYnoaTqv9fsWY00c-b8koSuP2MAMiVvzUn4xerA5gv_8RKfr5fd97haDj-7i9ovj-YwcjsPfP36rrd-vTzqbR2LYTOmzQJmcF2RB-JOAZuu_wLb4cSHE04aGzG71yGis6mbQDzc5SKojIG3SjrNlRGqMKIUvHRgwDHuCi50cbv2qWsjnl0LN_HTbjtjM2nuSlMYbwyjrDSS6swMeE6hbciU3eO79hPzRuqqT5RVSlUDKPUoKk45pSpXkjOBhlFEB-C8LrUsTAFSuZLpmqI33tKS5dRWc5_7GmovbQ1WGecY-fsHKkl1eg"
  name "Mimecast for Mac"
  desc "Access to the Mime Cast email archive"
  homepage "https://community.mimecast.com/community/knowledge-base/mimecast-for-mac"

  livecheck do
    url "http://updates-us.mimecast.com/update/descriptors/msm/latest"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Mimecast.app"

  zap trash: [
    "~/Library/Application Support/com.mimecast.Mimecast-Mail",
    "~/Library/Caches/com.crashlytics.data/com.mimecast.Mimecast-Mail",
    "~/Library/Caches/com.mimecast.Mimecast-Mail",
    "~/Library/com.mimecast.Mimecast-Mail",
    "~/Library/HTTPStorages/com.mimecast.Mimecast-Mail",
    "~/Library/Logs/Mimecast",
    "~/Library/Preferences/com.mimecast.Mimecast-Mail.plist",
  ]

  caveats do
    requires_rosetta
  end
end
