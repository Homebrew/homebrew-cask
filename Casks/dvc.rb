cask "dvc" do
  version "2.31.0"
  sha256 "16d24e2983c70480da37fea817c68455a8500ac86ead36395fb043994f778775"

  url "https://dvc.org/download/osx/dvc-#{version}"
  name "dvc"
  desc "Open-source Version Control System for Machine Learning Projects"
  homepage "https://dvc.org/"

  livecheck do
    url "https://dvc.org/"
    regex(/href=.*?dvc-(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :mojave"

  pkg "dvc-#{version}.pkg"

  uninstall pkgutil: "com.iterative.dvc"

  zap trash: [
    "~/Library/Application Support/dvc",
    "~/Library/Application Support/iterative",
  ]
end
