cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.7"
  sha256 arm:   "55f381137cfa75bfdc0a8d0356e39103416f0d87a67eb9292545eae86de6ab0f",
         intel: "1679bbf8a47292d510ddc01531eb55ed33708e58c17064e65b7c10c4614e77fd"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  disable! date: "2026-09-01", because: :unsigned

  binary "oc"

  zap trash: "~/.kube/config"
end
