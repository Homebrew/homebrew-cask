cask "agenda" do
  version "11.2.1"
  sha256 "6a94494264769356f1d684bcb725e780f4697b4e9be483dd36a153226b555272"

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast "https://downloads.agenda.com/AgendaSparkleAppcast.xml"
  name "Agenda"
  desc "Note taking application focusing on dates"
  homepage "https://agenda.com/"

  depends_on macos: ">= :sierra"

  app "Agenda.app"
end
