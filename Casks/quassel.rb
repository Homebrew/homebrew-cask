cask "quassel" do
  version "0.13.1"
  sha256 "5a2437dd0fc51a8fa12f2c83472e8294635edea41e55c523535df080c012379e"

  # github.com/quassel/quassel/ was verified as official when first introduced to the cask
  url "https://github.com/quassel/quassel/releases/download/#{version}/QuasselMono_MacOSX-x86_64_#{version}.dmg"
  appcast "https://github.com/quassel/quassel/releases.atom"
  name "Quassel"
  desc "IRC client"
  homepage "https://quassel-irc.org/"

  app "Quassel.app"
end
