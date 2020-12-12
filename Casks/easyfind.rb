cask "easyfind" do
  version "5.0"
  sha256 "a389fc3c35a7d5111960c4ce5e631ad3b99ed1dd5534299b577a68cbd06bc327"

  url "https://download.devontechnologies.com/download/freeware/easyfind/#{version}/EasyFind.app.zip"
  appcast "https://www.devontechnologies.com/apps/freeware"
  name "EasyFind"
  desc "Find files, folders, or contents in any file"
  homepage "https://www.devontechnologies.com/apps/freeware"

  app "EasyFind.app"
end
