cask :v1 => 'koala' do
  require 'yaml'
  require 'open-uri'
  response = open("https://www.amazon.com/drive/v1/shares/_7ThHQlpGzzY1IMGa72x2Kc4I3JBVTbdChWZz8KvIAI").read
  metaData = YAML::load(response)

  version '2.0.4'
  sha256 '8b0d3564db80bad52cbad1b0755a5ff55f6d1549ea8f55e4a309552261a61327'

  #url "https://www.amazon.com/drive/v1/shares/_7ThHQlpGzzY1IMGa72x2Kc4I3JBVTbdChWZz8KvIAI"
  url "#{metaData["nodeInfo"]["tempLink"]}"
  name 'Koala'
  homepage 'http://koala-app.com'
  license :apache

  app 'Koala.app'
end
