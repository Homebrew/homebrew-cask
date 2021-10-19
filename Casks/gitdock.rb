cask "gitdock" do
  version "0.1.9"
  sha256 "f9fecb7d026d1acaea71bf62439bda604d30688383993f34dd343283d44a4d52"

  url "https://gitlab.com/api/v4/projects/28462485/packages/generic/gitdock/#{version}/GitDock.dmg"
  name "gitdock"
  desc "GitDock is a MacOS/Windows/Linux app that displays all your GitLab activities in one place. Instead of the GitLab typical project- or group-centric approach, it collects all your information from a user-centric perspective."
  homepage "https://gitlab.com/mvanremmerden/gitdock"

  app "GitDock.app"
end
