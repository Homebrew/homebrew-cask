cask "fetch" do
  version "5.8.1"
  sha256 "80e824a2fb483f08827a53d61bf07df3ae3f4e6243ff4811bd1ffbeaa48eedc2"

  url "https://fetchsoftworks.com/fetch/download/Fetch_#{version}.zip"
  appcast "https://updates.fetchsoftworks.com/list/fetch-#{version.major}K0-release.xml"
  name "Fetch"
  desc "File transfer client"
  homepage "https://fetchsoftworks.com/fetch/"

  app "Fetch.app"
end
