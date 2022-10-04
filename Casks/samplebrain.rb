cask "samplebrain" do
  version "0.18.3"
  sha256 "addacbdb7f9fff41787c4dcf4a72b46691a567c8876939da7a8e1c67f91f369f"

  url "https://static.thentrythis.org/samplebrain/samplebrain_#{version}_macintel.app.zip"
  name "samplebrain"
  desc "Custom sample mashing app designed by Aphex Twin"
  homepage "https://thentrythis.org/projects/samplebrain/"

  app "samplebrain.app"
end
