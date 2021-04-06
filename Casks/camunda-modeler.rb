cask "camunda-modeler" do
  version "4.6.0"
  sha256 "2d3b709a86bbc7c030594307d977a851950d4495e1802924e393bcbaf24860de"

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  name "Camunda Modeler"
  homepage "https://camunda.org/"

  livecheck do
    url "https://camunda.com/download/modeler/"
    strategy :page_match
    regex(%r{href=.*?/camunda-modeler-(\d+(?:\.\d+)*)-mac\.zip}i)
  end

  app "Camunda Modeler.app"
end
