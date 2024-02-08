cask "kubecontext" do
  version "2.0.1"
  sha256 "9b815995123dcf8a6e90c65600db68fdb38d1e9e362695922b2ec2aad7d74fc2"

  url "https://github.com/turkenh/KubeContext/releases/download/v#{version}/KubeContext.zip"
  name "KubeContext"
  desc "Menu bar app for managing Kubernetes contexts"
  homepage "https://github.com/turkenh/KubeContext"

  depends_on macos: ">= :big_sur"

  app "KubeContext.app"

  zap trash: [
    "~/Library/Application Scripts/com.ht.kubecontext",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ht.kubecontext.sfl*",
    "~/Library/Containers/com.ht.kubecontext",
  ]
end
