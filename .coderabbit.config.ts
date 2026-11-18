// Repository-owned: the `.github` sync deliberately skips homebrew-cask.
import { defineConfig } from "@coderabbitai/config"

export default defineConfig(() => ({
  inheritance: true,

  reviews: {
    auto_review: {
      enabled: false,
      labels: ["new cask"],
    },
  },
}))
