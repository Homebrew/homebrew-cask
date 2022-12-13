cask "lego-spike" do
  version "3.2.0"
  sha256 "9a4aca2d7a8963eb4279ca5c215a828f64bb93c3983497dd18b77ae76b88a677"

  url "https://education.lego.com/_/downloads/SPIKE_APP_3_macOS__#{version}_Global.dmg"
  name "Lego SPIKE"
  desc "The intuitive SPIKE™ App lets your students develop coding capabilities with Scratch and Python, regardless of their skill level."
  homepage "https://education.lego.com/"

  depends_on macos: ">= :catalina"
  depends_on arch: :x86_64 


  app "Spike.app"
end


