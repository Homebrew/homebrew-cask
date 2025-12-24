cask "maccalendar" do
  version "1.1.10"
  sha256 "4db6752c1c22fd9912618508187ae711731d3c3576a47ad8aba25383f93473b5"

  url "https://github.com/bylinxx/MacCalendar/releases/download/v#{version}/MacCalendar_#{version}.dmg"

  name "MacCalendar"
  desc "完全免费&开源的离线小而美 macOS 菜单栏日历app，支持中国农历、节假日、放假安排、系统日程等"
  homepage "https://github.com/bylinxx/MacCalendar"

  app "MacCalendar.app"

  zap trash: [
  ]
end