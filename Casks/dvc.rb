cask "dvc" do
  version "2.33.2"
  sha256 "ceebcb6be244f6fdb5c6329ccd0ceb2cc25c727c6a4929f7d690716a708b90af"

  # github.com/iterative/dvc/ was verified as official when first introduced to the cask
  url "https://github.com/iterative/dvc/releases/download/#{version}/dvc-#{version}.pkg"
  name "dvc"
  desc "Open-source Version Control System for Machine Learning Projects"
  homepage "https://dvc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  pkg "dvc-#{version}.pkg"

  zap trash: [
    "~/Library/Application Support/dvc",
    "~/Library/Application Support/iterative",
  ]
end
